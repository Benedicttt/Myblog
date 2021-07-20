package api;

import helpers.Data;
import helpers.Print;
import helpers.Request;
import helpers.api.SystemProperty;
import io.restassured.response.Response;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import java.io.IOException;

import static helpers.Property.getProperty;
import static io.restassured.module.jsv.JsonSchemaValidator.matchesJsonSchemaInClasspath;

class JUnit5Test3 {
    private static Response response;
    private static Data something;

    @BeforeAll
    static void init() {
        something = Data.INSTANCE;
    }

    @BeforeAll
    static void request() throws IOException {
        response = Request.call(getProperty("baseUrlAPI"), null);
        Print.d(System.getProperty("val1"));
    }

    @Test
    @DisplayName("get and assert status code")
    @SystemProperty(key = "key", value = "value")
    void test1() {
        Assertions.assertNotEquals(System.getProperty("key"), "key");
        Assertions.assertEquals(System.getProperty("key"), "value");
    }

    @Test
    void test2() {
        Assertions.assertNull(System.getProperty("key"));
    }

    @Test
    @DisplayName("Check response code")
    void test3() {
        Assertions.assertEquals(response.getStatusCode(), 200);
    }

    @Test
    @DisplayName("Check schema")
    void test4() {
        response.then().assertThat().body(matchesJsonSchemaInClasspath("schema/example.json"));
    }

}