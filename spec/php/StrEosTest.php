<?php
namespace Kaitai\Struct\Tests;

class StrEosTest extends TestCase {
    public function testStrEos() {
        $r = StrEos::fromFile(self::SRC_DIR_PATH . "/term_strz.bin");

        $this->assertEquals("foo|bar|baz@", $r->str());
    }
}
