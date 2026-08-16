package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.IMemberValuePair;
import org.eclipse.jdt.internal.core.util.Util;

public class MemberValuePair implements IMemberValuePair {
    String memberName;
    public Object value;
    public int valueKind;

    public MemberValuePair(String str) {
        this.valueKind = 14;
        this.memberName = str;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof MemberValuePair)) {
            return false;
        }
        MemberValuePair memberValuePair = (MemberValuePair) obj;
        if (this.valueKind == memberValuePair.valueKind && this.memberName.equals(memberValuePair.memberName)) {
            Object obj2 = this.value;
            Object obj3 = memberValuePair.value;
            if (obj2 == obj3) {
                return true;
            }
            if (obj2 != null && obj2.equals(obj3)) {
                return true;
            }
            Object obj4 = this.value;
            if (obj4 instanceof Object[]) {
                Object obj5 = memberValuePair.value;
                if ((obj5 instanceof Object[]) && Util.equalArraysOrNull((Object[]) obj4, (Object[]) obj5)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override
    public String getMemberName() {
        return this.memberName;
    }

    @Override
    public Object getValue() {
        return this.value;
    }

    @Override
    public int getValueKind() {
        return this.valueKind;
    }

    public int hashCode() {
        String str = this.memberName;
        int hashCode = ((str == null ? 0 : str.hashCode()) + 31) * 31;
        Object obj = this.value;
        return ((hashCode + (obj != null ? obj.hashCode() : 0)) * 31) + this.valueKind;
    }

    public MemberValuePair(String str, Object obj, int i10) {
        this(str);
        this.value = obj;
        this.valueKind = i10;
    }
}
