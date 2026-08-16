package com.ardor3d.util.export.binary;

import java.util.HashMap;

public class BinaryClassObject {
    public byte[] _alias;
    public HashMap<Byte, BinaryClassField> _aliasFields;
    public String _className;
    public HashMap<String, BinaryClassField> _nameFields;
}
