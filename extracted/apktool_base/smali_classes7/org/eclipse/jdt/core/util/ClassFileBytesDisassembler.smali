.class public abstract Lorg/eclipse/jdt/core/util/ClassFileBytesDisassembler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final COMPACT:I = 0x8

.field public static final DEFAULT:I = 0x2

.field public static final DETAILED:I = 0x1

.field public static final SYSTEM:I = 0x4

.field public static final WORKING_COPY:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract disassemble([BLjava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/util/ClassFormatException;
        }
    .end annotation
.end method

.method public abstract disassemble([BLjava/lang/String;I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/util/ClassFormatException;
        }
    .end annotation
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method
