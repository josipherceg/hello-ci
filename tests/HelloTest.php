<?php

/**
 * coversDefaultClass \Josip\Demo\Hello
 */
class HelloTest extends \PHPUnit_Framework_TestCase
{
	protected $hello;

	public function setUp()
	{
		$this->hello = new \Josip\Demo\Hello();
	}

	/**
	 * @covers ::world
	 */
	public function testHelloWorld()
	{
		$this->assertSame('Hello world!', $this->hello->world());
	}
}