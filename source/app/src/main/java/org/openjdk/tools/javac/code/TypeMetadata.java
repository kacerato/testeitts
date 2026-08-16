package org.openjdk.tools.javac.code;

import java.util.EnumMap;
import java.util.HashSet;
import org.openjdk.tools.javac.code.Attribute;
import org.openjdk.tools.javac.util.Assert;
import org.openjdk.tools.javac.util.List;

public class TypeMetadata {
    public static final TypeMetadata EMPTY = new TypeMetadata();
    private final EnumMap<Entry.Kind, Entry> contents;

    public static class Annotations implements Entry {
        public static final List<Attribute.TypeCompound> TO_BE_SET = List.nil();
        private List<Attribute.TypeCompound> annos;

        public Annotations(List<Attribute.TypeCompound> list) {
            this.annos = list;
        }

        public List<Attribute.TypeCompound> getAnnotations() {
            return this.annos;
        }

        @Override
        public Entry.Kind kind() {
            return Entry.Kind.ANNOTATIONS;
        }

        public String toString() {
            return "ANNOTATIONS [ " + ((Object) this.annos) + " ]";
        }

        @Override
        public Annotations combine(Entry entry) {
            Assert.check(this.annos == TO_BE_SET);
            this.annos = ((Annotations) entry).annos;
            return this;
        }
    }

    public interface Entry {

        public enum Kind {
            ANNOTATIONS
        }

        Entry combine(Entry entry);

        Kind kind();
    }

    private TypeMetadata() {
        this.contents = new EnumMap<>(Entry.Kind.class);
    }

    private void add(Entry.Kind kind, Entry entry) {
        this.contents.put((EnumMap<Entry.Kind, Entry>) kind, (Entry.Kind) entry);
    }

    public TypeMetadata combine(Entry entry) {
        Assert.checkNonNull(entry);
        TypeMetadata typeMetadata = new TypeMetadata(this);
        Entry.Kind kind = entry.kind();
        if (this.contents.containsKey(kind)) {
            typeMetadata.add(kind, this.contents.get(kind).combine(entry));
        } else {
            typeMetadata.add(kind, entry);
        }
        return typeMetadata;
    }

    public TypeMetadata combineAll(TypeMetadata typeMetadata) {
        Assert.checkNonNull(typeMetadata);
        TypeMetadata typeMetadata2 = new TypeMetadata();
        HashSet<Entry.Kind> hashSet = new HashSet(this.contents.o());
        hashSet.addAll(typeMetadata.contents.o());
        for (Entry.Kind kind : hashSet) {
            if (this.contents.containsKey(kind)) {
                if (typeMetadata.contents.containsKey(kind)) {
                    typeMetadata2.add(kind, this.contents.get(kind).combine(typeMetadata.contents.get(kind)));
                } else {
                    typeMetadata2.add(kind, this.contents.get(kind));
                }
            } else if (typeMetadata.contents.containsKey(kind)) {
                typeMetadata2.add(kind, typeMetadata.contents.get(kind));
            }
        }
        return typeMetadata2;
    }

    public Entry get(Entry.Kind kind) {
        return this.contents.get(kind);
    }

    public TypeMetadata without(Entry.Kind kind) {
        TypeMetadata typeMetadata = EMPTY;
        if (this == typeMetadata || this.contents.get(kind) == null) {
            return this;
        }
        TypeMetadata typeMetadata2 = new TypeMetadata(this);
        typeMetadata2.contents.remove(kind);
        return typeMetadata2.contents.isEmpty() ? typeMetadata : typeMetadata2;
    }

    public TypeMetadata(Entry entry) {
        this();
        Assert.checkNonNull(entry);
        this.contents.put((EnumMap<Entry.Kind, Entry>) entry.kind(), (Entry.Kind) entry);
    }

    public TypeMetadata(TypeMetadata typeMetadata) {
        Assert.checkNonNull(typeMetadata);
        this.contents = typeMetadata.contents.clone();
    }
}
