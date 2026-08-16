.class public final Lu0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/a$d$f;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final e:Lu0/h;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lu0/g;

    invoke-direct {v0}, Lu0/g;-><init>()V

    new-instance v1, Lu0/h;

    invoke-direct {v1, v0}, Lu0/h;-><init>(Lu0/g;)V

    sput-object v1, Lu0/h;->e:Lu0/h;

    return-void
.end method

.method public constructor <init>(Lu0/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lu0/h;->b:Ljava/lang/String;

    iget-object v0, p1, Lu0/g;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lu0/h;->c:Z

    iget-object p1, p1, Lu0/g;->b:Ljava/lang/String;

    iput-object p1, p0, Lu0/h;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "consumer_package"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "force_save_dialog"

    iget-boolean v2, p0, Lu0/h;->c:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "log_session_id"

    iget-object v2, p0, Lu0/h;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final synthetic b()Z
    .locals 1

    iget-boolean v0, p0, Lu0/h;->c:Z

    return v0
.end method

.method public final synthetic c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lu0/h;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lu0/h;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lu0/h;

    iget-object v1, p1, Lu0/h;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1, v1}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lu0/h;->c:Z

    iget-boolean v3, p1, Lu0/h;->c:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lu0/h;->d:Ljava/lang/String;

    iget-object p1, p1, Lu0/h;->d:Ljava/lang/String;

    invoke-static {v1, p1}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lu0/h;->c:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lu0/h;->d:Ljava/lang/String;

    const/4 v2, 0x0

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LG0/y;->c([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
