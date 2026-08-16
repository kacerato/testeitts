package com.github.javaparser.printer;

import javax.xml.stream.XMLStreamException;

public class RuntimeXMLStreamException extends RuntimeException {
    public RuntimeXMLStreamException(XMLStreamException cause) {
        super((Throwable) cause);
    }

    public XMLStreamException getXMLStreamCause() {
        return super.getCause();
    }
}
