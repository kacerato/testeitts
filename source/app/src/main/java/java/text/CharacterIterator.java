package java.text;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/text/CharacterIterator.class
 */
public interface CharacterIterator extends Cloneable {
    public static final char DONE = '\uffff';

    char first();

    char last();

    char current();

    char next();

    char previous();

    char setIndex(int i10);

    int getBeginIndex();

    int getEndIndex();

    int getIndex();

    Object clone();
}
