.class public Lorg/openjdk/tools/javah/Mangle$Type;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javah/Mangle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Type"
.end annotation


# static fields
.field public static final CLASS:I = 0x1

.field public static final FIELD:I = 0x3

.field public static final FIELDSTUB:I = 0x2

.field public static final JNI:I = 0x4

.field public static final METHOD_JDK_1:I = 0x6

.field public static final METHOD_JNI_LONG:I = 0x8

.field public static final METHOD_JNI_SHORT:I = 0x7

.field public static final SIGNATURE:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
