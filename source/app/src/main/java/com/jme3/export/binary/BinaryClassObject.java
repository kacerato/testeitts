package com.jme3.export.binary;

import java.util.HashMap;

class BinaryClassObject {
    byte[] alias;
    HashMap<Byte, BinaryClassField> aliasFields;
    int[] classHierarchyVersions;
    String className;
    HashMap<String, BinaryClassField> nameFields;
}
