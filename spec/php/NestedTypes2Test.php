<?php
namespace Kaitai\Struct\Tests;

class NestedTypes2Test extends TestCase {
    public function testNestedTypes2() {
        $r = NestedTypes2::fromFile(self::SRC_DIR_PATH . "/fixed_struct.bin");

        $this->assertEquals(80, $r->one()->typedAtRoot()->valueB());

        $this->assertEquals(65, $r->one()->typedHere1()->valueC());

        $this->assertEquals(67, $r->one()->typedHere1()->typedHere()->valueD());
        $this->assertEquals(75, $r->one()->typedHere1()->typedParent()->valueCc());
        $this->assertEquals(45, $r->one()->typedHere1()->typedRoot()->valueB());

        $this->assertEquals(49, $r->one()->typedHere2()->valueCc());

        $this->assertEquals(-1, $r->two()->valueB());
    }
}
