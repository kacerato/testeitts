.class public abstract Lorg/eclipse/jdt/core/formatter/CodeFormatter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final F_INCLUDE_COMMENTS:I = 0x1000

.field public static final K_CLASS_BODY_DECLARATIONS:I = 0x4

.field public static final K_COMPILATION_UNIT:I = 0x8

.field public static final K_EXPRESSION:I = 0x1

.field public static final K_JAVA_DOC:I = 0x40

.field public static final K_MODULE_INFO:I = 0x80

.field public static final K_MULTI_LINE_COMMENT:I = 0x20

.field public static final K_SINGLE_LINE_COMMENT:I = 0x10

.field public static final K_STATEMENTS:I = 0x2

.field public static final K_UNKNOWN:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createIndentationString(I)Ljava/lang/String;
    .locals 0

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    return-object p1
.end method

.method public abstract format(ILjava/lang/String;IIILjava/lang/String;)Lorg/eclipse/text/edits/TextEdit;
.end method

.method public abstract format(ILjava/lang/String;[Lorg/eclipse/jface/text/IRegion;ILjava/lang/String;)Lorg/eclipse/text/edits/TextEdit;
.end method

.method public setOptions(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
