package java.text;

import java.io.InvalidObjectException;
import java.io.Serializable;
import java.util.Map;
import java.util.Set;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/text/AttributedCharacterIterator.class
 */
public interface AttributedCharacterIterator extends CharacterIterator {
    int getRunStart();

    int getRunStart(Attribute attribute);

    int getRunStart(Set<? extends Attribute> set);

    int getRunLimit();

    int getRunLimit(Attribute attribute);

    int getRunLimit(Set<? extends Attribute> set);

    Map<Attribute, Object> getAttributes();

    Object getAttribute(Attribute attribute);

    Set<Attribute> getAllAttributeKeys();

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/text/AttributedCharacterIterator$Attribute.class
 */
    public static class Attribute implements Serializable {
        public static final Attribute INPUT_METHOD_SEGMENT = null;
        public static final Attribute LANGUAGE = null;
        public static final Attribute READING = null;

        public Attribute(String name) {
            throw new RuntimeException("Stub!");
        }

        public final boolean equals(Object obj) {
            throw new RuntimeException("Stub!");
        }

        public final int hashCode() {
            throw new RuntimeException("Stub!");
        }

        public String toString() {
            throw new RuntimeException("Stub!");
        }

        protected String getName() {
            throw new RuntimeException("Stub!");
        }

        protected Object readResolve() throws InvalidObjectException {
            throw new RuntimeException("Stub!");
        }
    }
}
