.class public Lorg/eclipse/jdt/core/util/ClassFormatException;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field public static final ERROR_MALFORMED_UTF8:I = 0x1

.field public static final ERROR_TRUNCATED_INPUT:I = 0x2

.field public static final INVALID_ARGUMENTS_FOR_INVOKEINTERFACE:I = 0x5

.field public static final INVALID_BYTECODE:I = 0x6

.field public static final INVALID_CONSTANT_POOL_ENTRY:I = 0x3

.field public static final INVALID_MAGIC_NUMBER:I = 0x8

.field public static final INVALID_TAG_CONSTANT:I = 0x7

.field public static final TOO_MANY_BYTES:I = 0x4

.field private static final serialVersionUID:J = 0x5b5b292e1a6bb67cL


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
