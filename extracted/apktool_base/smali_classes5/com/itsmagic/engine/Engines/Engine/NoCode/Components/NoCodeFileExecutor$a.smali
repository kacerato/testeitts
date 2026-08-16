.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor$a;
.super Lfb/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lfb/c;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->I:Ljava/lang/Class;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "NoCodeFileExecutor"

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "NoCode Graph"

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "NoCode File"

    return-object v0
.end method
