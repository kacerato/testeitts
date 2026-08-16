.class public final Lcom/android/tools/r8/internal/XL;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/xQ;


# annotations
.annotation runtime Lcom/android/tools/r8/internal/tW;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 #2\u00020\u0001:\u0001#B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0013\"\u0004\u0008\u0018\u0010\u0015R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0013\"\u0004\u0008\u001b\u0010\u0015R\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0013\"\u0004\u0008\u001e\u0010\u0015R\u0014\u0010\u001f\u001a\u00020 8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\"\u00a8\u0006$"
    }
    d2 = {
        "Lkotlin/metadata/jvm/internal/JvmPropertyExtension;",
        "Lkotlin/metadata/internal/extensions/KmPropertyExtension;",
        "<init>",
        "()V",
        "jvmFlags",
        "",
        "getJvmFlags",
        "()I",
        "setJvmFlags",
        "(I)V",
        "fieldSignature",
        "Lkotlin/metadata/jvm/JvmFieldSignature;",
        "getFieldSignature",
        "()Lkotlin/metadata/jvm/JvmFieldSignature;",
        "setFieldSignature",
        "(Lkotlin/metadata/jvm/JvmFieldSignature;)V",
        "getterSignature",
        "Lkotlin/metadata/jvm/JvmMethodSignature;",
        "getGetterSignature",
        "()Lkotlin/metadata/jvm/JvmMethodSignature;",
        "setGetterSignature",
        "(Lkotlin/metadata/jvm/JvmMethodSignature;)V",
        "setterSignature",
        "getSetterSignature",
        "setSetterSignature",
        "syntheticMethodForAnnotations",
        "getSyntheticMethodForAnnotations",
        "setSyntheticMethodForAnnotations",
        "syntheticMethodForDelegate",
        "getSyntheticMethodForDelegate",
        "setSyntheticMethodForDelegate",
        "type",
        "Lkotlin/metadata/internal/extensions/KmExtensionType;",
        "getType",
        "()Lkotlin/metadata/internal/extensions/KmExtensionType;",
        "Companion",
        "kotlin-metadata-jvm"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final g:Lcom/android/tools/r8/internal/nQ;


# instance fields
.field public a:I

.field public b:Lcom/android/tools/r8/internal/CL;

.field public c:Lcom/android/tools/r8/internal/OL;

.field public d:Lcom/android/tools/r8/internal/OL;

.field public e:Lcom/android/tools/r8/internal/OL;

.field public f:Lcom/android/tools/r8/internal/OL;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/nQ;

    const-class v1, Lcom/android/tools/r8/internal/XL;

    invoke-static {v1}, Lcom/android/tools/r8/internal/te0;->a(Ljava/lang/Class;)Lcom/android/tools/r8/internal/Wd;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/nQ;-><init>(Lcom/android/tools/r8/internal/Wd;)V

    sput-object v0, Lcom/android/tools/r8/internal/XL;->g:Lcom/android/tools/r8/internal/nQ;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/OL;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/XL;->e:Lcom/android/tools/r8/internal/OL;

    return-object v0
.end method

.method public final getType()Lcom/android/tools/r8/internal/nQ;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/XL;->g:Lcom/android/tools/r8/internal/nQ;

    return-object v0
.end method
