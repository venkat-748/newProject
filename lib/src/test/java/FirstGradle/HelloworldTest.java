package FirstGradle;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;


class HelloworldTest {
	@Test
	void addTest() {
	HelloWorld hw = new HelloWorld();
int actual=	hw.add(30, 10);
int expected = 40;
assertEquals(expected, actual);
	}

}
