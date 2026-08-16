package java.nio.file.attribute;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/file/attribute/AclEntryPermission.class
 */
public enum AclEntryPermission {
    APPEND_DATA,
    DELETE,
    DELETE_CHILD,
    EXECUTE,
    READ_ACL,
    READ_ATTRIBUTES,
    READ_DATA,
    READ_NAMED_ATTRS,
    SYNCHRONIZE,
    WRITE_ACL,
    WRITE_ATTRIBUTES,
    WRITE_DATA,
    WRITE_NAMED_ATTRS,
    WRITE_OWNER;

    public static final AclEntryPermission ADD_FILE = null;
    public static final AclEntryPermission ADD_SUBDIRECTORY = null;
    public static final AclEntryPermission LIST_DIRECTORY = null;
}
