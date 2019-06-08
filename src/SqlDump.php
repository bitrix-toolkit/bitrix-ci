<?php

namespace Sheerockoff\BitrixCi;

use Generator;
use InvalidArgumentException;

class SqlDump
{
    private $filePath;

    /**
     * @param string $filePath
     */
    public function __construct($filePath)
    {
        $this->filePath = $filePath;
    }

    /**
     * @return Generator
     * @throws InvalidArgumentException
     */
    public function parse()
    {
        $file = fopen($this->filePath, 'r');
        if (!is_resource($file)) {
            throw new InvalidArgumentException("Can't open {$this->filePath}.");
        }

        $query = '';
        while (!feof($file)) {
            $line = fgets($file);
            if (substr($line, 0, 2) == '--' || $line == '') {
                continue;
            }

            $query .= $line;

            if (substr(trim($line), -1, 1) == ';') {
                yield $query;
                $query = '';
            }
        }

        fclose($file);
    }
}