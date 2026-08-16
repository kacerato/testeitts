.class public final enum Lcom/android/tools/r8/internal/b70;
.super Lcom/android/tools/r8/internal/d70;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x2

    const-string v1, "IS_NULL"

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/d70;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Predicates.isNull()"

    return-object v0
.end method
