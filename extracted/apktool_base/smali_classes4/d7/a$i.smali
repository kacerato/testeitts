.class public Ld7/a$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Utils/y$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld7/a;->B(Landroid/view/View;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lq7/a;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Landroid/app/Activity;

.field public final synthetic e:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/util/List;Lq7/a;Landroid/content/Context;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$worlds",
            "val$loading",
            "val$context",
            "val$activity",
            "val$v"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ld7/a$i;->a:Ljava/util/List;

    iput-object p2, p0, Ld7/a$i;->b:Lq7/a;

    iput-object p3, p0, Ld7/a$i;->c:Landroid/content/Context;

    iput-object p4, p0, Ld7/a$i;->d:Landroid/app/Activity;

    iput-object p5, p0, Ld7/a$i;->e:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Ld7/a$i;Lq7/a;Ljava/util/List;Landroid/content/Context;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Ld7/a$i;->c(Lq7/a;Ljava/util/List;Landroid/content/Context;Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LTc/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/World/World;->folder:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/World/World;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LTc/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    iget-object v2, p0, Ld7/a$i;->a:Ljava/util/List;

    new-instance v3, Ldd/b;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x1

    invoke-static {p1, v4}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    new-instance v4, Ld7/a$i$a;

    invoke-direct {v4, p0, v0}, Ld7/a$i$a;-><init>(Ld7/a$i;Ljava/lang/String;)V

    const v0, 0x7f070274

    invoke-direct {v3, v0, p1, v1, v4}, Ldd/b;-><init>(ILjava/lang/String;ILdd/d;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final synthetic c(Lq7/a;Ljava/util/List;Landroid/content/Context;Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Lq7/a;->p1()V

    new-instance p1, Ldd/b;

    invoke-direct {p1}, Ldd/b;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, Ld7/a$i$b;

    invoke-direct {v0, p0, p3}, Ld7/a$i$b;-><init>(Ld7/a$i;Landroid/content/Context;)V

    const-string p3, "New world"

    invoke-direct {p1, p3, v0}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Ld7/a$i$c;

    invoke-direct {p1, p0, p4, p2}, Ld7/a$i$c;-><init>(Ld7/a$i;Landroid/app/Activity;Ljava/util/List;)V

    sget-object p2, Lr4/a$e;->Below:Lr4/a$e;

    invoke-static {p5, p2, p1}, LY6/a;->F1(Landroid/view/View;Lr4/a$e;Ljava/util/List;)V

    return-void
.end method

.method public onFinish()V
    .locals 8

    iget-object v2, p0, Ld7/a$i;->b:Lq7/a;

    iget-object v3, p0, Ld7/a$i;->a:Ljava/util/List;

    iget-object v4, p0, Ld7/a$i;->c:Landroid/content/Context;

    iget-object v5, p0, Ld7/a$i;->d:Landroid/app/Activity;

    iget-object v6, p0, Ld7/a$i;->e:Landroid/view/View;

    new-instance v7, Ld7/b;

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Ld7/b;-><init>(Ld7/a$i;Lq7/a;Ljava/util/List;Landroid/content/Context;Landroid/app/Activity;Landroid/view/View;)V

    invoke-static {v7}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method
