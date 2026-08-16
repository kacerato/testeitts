.class public Lw6/b$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw6/b;->H1(Lx6/c;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lx6/c;

.field public final synthetic d:Lw6/b;


# direct methods
.method public constructor <init>(Lw6/b;Ljava/lang/String;Lx6/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$projectName",
            "val$project"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lw6/b$n;->d:Lw6/b;

    iput-object p2, p0, Lw6/b$n;->b:Ljava/lang/String;

    iput-object p3, p0, Lw6/b$n;->c:Lx6/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lw6/b$n;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lid/a;->j(Ljava/io/File;)J

    move-result-wide v0

    invoke-static {v0, v1}, LTc/b;->s(J)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lw6/b$n$a;

    invoke-direct {v3, p0, v0, v1, v2}, Lw6/b$n$a;-><init>(Lw6/b$n;JLjava/lang/String;)V

    invoke-static {v3}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method
