package org.apache.commons.math3.exception.util;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

public class ExceptionContext implements Serializable {
    private static final long serialVersionUID = -6024911025449780478L;
    private Throwable throwable;
    private List<Localizable> msgPatterns = new ArrayList();
    private List<Object[]> msgArguments = new ArrayList();
    private Map<String, Object> context = new HashMap();

    public ExceptionContext(Throwable th2) {
        this.throwable = th2;
    }

    private String buildMessage(Locale locale, String str) {
        StringBuilder sb2 = new StringBuilder();
        int size = this.msgPatterns.size();
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            sb2.append(new MessageFormat(this.msgPatterns.get(i11).getLocalizedString(locale), locale).format(this.msgArguments.get(i11)));
            i10++;
            if (i10 < size) {
                sb2.append(str);
            }
        }
        return sb2.toString();
    }

    private void deSerializeContext(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        int readInt = objectInputStream.readInt();
        this.context = new HashMap();
        for (int i10 = 0; i10 < readInt; i10++) {
            this.context.put((String) objectInputStream.readObject(), objectInputStream.readObject());
        }
    }

    private void deSerializeMessages(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        int readInt = objectInputStream.readInt();
        this.msgPatterns = new ArrayList(readInt);
        this.msgArguments = new ArrayList(readInt);
        for (int i10 = 0; i10 < readInt; i10++) {
            this.msgPatterns.add((Localizable) objectInputStream.readObject());
            int readInt2 = objectInputStream.readInt();
            Object[] objArr = new Object[readInt2];
            for (int i11 = 0; i11 < readInt2; i11++) {
                objArr[i11] = objectInputStream.readObject();
            }
            this.msgArguments.add(objArr);
        }
    }

    private String nonSerializableReplacement(Object obj) {
        return "[Object could not be serialized: " + obj.getClass().getName() + "]";
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        this.throwable = (Throwable) objectInputStream.readObject();
        deSerializeMessages(objectInputStream);
        deSerializeContext(objectInputStream);
    }

    private void serializeContext(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(this.context.size());
        for (Map.Entry<String, Object> entry : this.context.entrySet()) {
            objectOutputStream.writeObject(entry.getKey());
            Object value = entry.getValue();
            if (value instanceof Serializable) {
                objectOutputStream.writeObject(value);
            } else {
                objectOutputStream.writeObject(nonSerializableReplacement(value));
            }
        }
    }

    private void serializeMessages(ObjectOutputStream objectOutputStream) throws IOException {
        int size = this.msgPatterns.size();
        objectOutputStream.writeInt(size);
        for (int i10 = 0; i10 < size; i10++) {
            objectOutputStream.writeObject(this.msgPatterns.get(i10));
            Object[] objArr = this.msgArguments.get(i10);
            objectOutputStream.writeInt(objArr.length);
            for (Object obj : objArr) {
                if (obj instanceof Serializable) {
                    objectOutputStream.writeObject(obj);
                } else {
                    objectOutputStream.writeObject(nonSerializableReplacement(obj));
                }
            }
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeObject(this.throwable);
        serializeMessages(objectOutputStream);
        serializeContext(objectOutputStream);
    }

    public void addMessage(Localizable localizable, Object... objArr) {
        this.msgPatterns.add(localizable);
        this.msgArguments.add(ArgUtils.flatten(objArr));
    }

    public Set<String> getKeys() {
        return this.context.o();
    }

    public String getLocalizedMessage() {
        return getMessage(Locale.getDefault());
    }

    public String getMessage() {
        return getMessage(Locale.US);
    }

    public Throwable getThrowable() {
        return this.throwable;
    }

    public Object getValue(String str) {
        return this.context.get(str);
    }

    public void setValue(String str, Object obj) {
        this.context.put(str, obj);
    }

    public String getMessage(Locale locale) {
        return buildMessage(locale, ": ");
    }

    public String getMessage(Locale locale, String str) {
        return buildMessage(locale, str);
    }
}
