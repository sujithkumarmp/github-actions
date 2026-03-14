package com.example.demo.karate;

import com.intuit.karate.junit5.Karate;

class HelloKarateTest {

    @Karate.Test
    Karate testHello() {
        return Karate.run("hello").relativeTo(getClass());
    }
}
