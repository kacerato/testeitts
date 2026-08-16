.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$d$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$d$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$d$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$d$a$b;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->w1()Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->w1()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$d$a$b$a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$d$a$b$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$d$a$b;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
