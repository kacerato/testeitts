package java.lang.classfile.attribute;

import java.lang.classfile.Attribute;
import java.lang.classfile.ClassElement;
import java.lang.classfile.constantpool.ClassEntry;
import java.lang.constant.ClassDesc;
import java.util.Arrays;
import java.util.List;
import jdk.internal.classfile.impl.UnboundAttribute;
import jdk.internal.classfile.impl.Util;

public interface NestMembersAttribute extends Attribute<NestMembersAttribute>, ClassElement {
    List<ClassEntry> nestMembers();

    static NestMembersAttribute of(List<ClassEntry> nestMembers) {
        return new UnboundAttribute.UnboundNestMembersAttribute(nestMembers);
    }

    static NestMembersAttribute of(ClassEntry... nestMembers) {
        return of((List<ClassEntry>) List.of(nestMembers));
    }

    static NestMembersAttribute ofSymbols(List<ClassDesc> nestMembers) {
        return of((List<ClassEntry>) Util.entryList(nestMembers));
    }

    static NestMembersAttribute ofSymbols(ClassDesc... nestMembers) {
        return ofSymbols((List<ClassDesc>) Arrays.asList(nestMembers));
    }
}
