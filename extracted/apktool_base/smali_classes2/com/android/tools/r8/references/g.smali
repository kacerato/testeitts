.class public final Lcom/android/tools/r8/references/g;
.super Lcom/android/tools/r8/references/PrimitiveReference;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/tools/r8/references/PrimitiveReference;-><init>(Lcom/android/tools/r8/references/i;)V

    return-void
.end method


# virtual methods
.method public final getDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "J"

    return-object v0
.end method
