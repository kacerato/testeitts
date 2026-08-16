package com.jme3.util.xml;

import com.itsmagic.engine.Engines.Engine.Animation.a;
import com.jme3.math.ColorRGBA;
import com.jme3.math.Vector3f;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import u8.C15580b;

public final class SAXUtil {
    private SAXUtil() {
    }

    public static boolean parseBool(String str, boolean z10) throws SAXException {
        return (str == null || str.equals("")) ? z10 : Boolean.valueOf(str).booleanValue();
    }

    public static ColorRGBA parseColor(Attributes attributes) throws SAXException {
        return new ColorRGBA(parseFloat(attributes.getValue(a.f72595c)), parseFloat(attributes.getValue("g")), parseFloat(attributes.getValue(C15580b.f118629u)), 1.0f);
    }

    public static float parseFloat(String str, float f10) throws SAXException {
        if (str == null) {
            return f10;
        }
        try {
            return Float.parseFloat(str);
        } catch (NumberFormatException unused) {
            throw new SAXException("Expected a decimal, got '" + str + "'");
        }
    }

    public static int parseInt(String str, int i10) throws SAXException {
        if (str == null) {
            return i10;
        }
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            throw new SAXException("Expected an integer, got '" + str + "'");
        }
    }

    public static String parseString(String str, String str2) {
        return str == null ? str2 : str;
    }

    public static Vector3f parseVector3(Attributes attributes) throws SAXException {
        return new Vector3f(parseFloat(attributes.getValue("x")), parseFloat(attributes.getValue("y")), parseFloat(attributes.getValue("z")));
    }

    public static String parseString(String str) throws SAXException {
        if (str != null) {
            return str;
        }
        throw new SAXException("Expected a string");
    }

    public static float parseFloat(String str) throws SAXException {
        if (str != null) {
            try {
                return Float.parseFloat(str);
            } catch (NumberFormatException unused) {
                throw new SAXException("Expected a decimal, got '" + str + "'");
            }
        }
        throw new SAXException("Expected a decimal");
    }

    public static int parseInt(String str) throws SAXException {
        if (str != null) {
            try {
                return Integer.parseInt(str);
            } catch (NumberFormatException unused) {
                throw new SAXException("Expected an integer, got '" + str + "'");
            }
        }
        throw new SAXException("Expected an integer");
    }
}
