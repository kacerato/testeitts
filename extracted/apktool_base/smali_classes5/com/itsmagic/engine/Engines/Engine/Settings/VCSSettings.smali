.class public Lcom/itsmagic/engine/Engines/Engine/Settings/VCSSettings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public enableVCS:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public maximumVCSDiskUsage:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/VCSSettings;->enableVCS:Z

    const/16 v0, 0x200

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/VCSSettings;->maximumVCSDiskUsage:I

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/Settings/c;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/itsmagic/engine/Engines/Engine/Settings/c;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Settings/VCSSettings$a;

    invoke-direct {v1, p0, p2}, Lcom/itsmagic/engine/Engines/Engine/Settings/VCSSettings$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Settings/VCSSettings;Lcom/itsmagic/engine/Engines/Engine/Settings/c;)V

    const-string v2, "Enable version control system"

    sget-object v3, LC5/b$a;->SLBoolean:LC5/b$a;

    invoke-direct {p1, v1, v2, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Settings/VCSSettings$b;

    invoke-direct {v1, p0, p2}, Lcom/itsmagic/engine/Engines/Engine/Settings/VCSSettings$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/Settings/VCSSettings;Lcom/itsmagic/engine/Engines/Engine/Settings/c;)V

    sget-object p2, LC5/b$a;->SLInt:LC5/b$a;

    const/4 v2, 0x0

    const-string v3, "Maximum VCS Disk Usage in MB"

    invoke-direct {p1, v1, v3, p2, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Z)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_0
    invoke-static {}, Lh4/k;->z()Lh4/k;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {}, Lh4/k;->z()Lh4/k;

    move-result-object p1

    invoke-virtual {p1}, Lh4/k;->C()F

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 p2, 0x42c80000    # 100.0f

    cmpg-float p2, p1, p2

    const/16 v1, 0xc

    const-string v2, " MB"

    const-string v3, "Used disk space "

    if-gez p2, :cond_1

    :try_start_1
    new-instance p2, LC5/b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    invoke-static {p1, v3}, LNc/b;->v0(FI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v1}, LC5/b;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    new-instance p2, LC5/b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int p1, p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v1}, LC5/b;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    return-object v0
.end method
