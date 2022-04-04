/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class MockHttpResponse implements System.HttpCalloutMock {
    global String body {
        get;
        set;
    }
    global Map<String,String> headers {
        get;
        set;
    }
    global Integer statusCode {
        get;
        set;
    }
    global System.HttpResponse respond(System.HttpRequest request) {
        return null;
    }
}
