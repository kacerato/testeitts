.class public interface abstract Lorg/eclipse/jdt/core/IMemberValuePair;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final K_ANNOTATION:I = 0xa

.field public static final K_BOOLEAN:I = 0x8

.field public static final K_BYTE:I = 0x2

.field public static final K_CHAR:I = 0x4

.field public static final K_CLASS:I = 0xb

.field public static final K_DOUBLE:I = 0x6

.field public static final K_FLOAT:I = 0x5

.field public static final K_INT:I = 0x1

.field public static final K_LONG:I = 0x7

.field public static final K_QUALIFIED_NAME:I = 0xc

.field public static final K_SHORT:I = 0x3

.field public static final K_SIMPLE_NAME:I = 0xd

.field public static final K_STRING:I = 0x9

.field public static final K_UNKNOWN:I = 0xe


# virtual methods
.method public abstract getMemberName()Ljava/lang/String;
.end method

.method public abstract getValue()Ljava/lang/Object;
.end method

.method public abstract getValueKind()I
.end method
