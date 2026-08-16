.class public Ld7/a$i$c$a$c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Core/Components/ProjectController/a$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld7/a$i$c$a$c$a;->onSelected(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld7/a$i$c$a$c$a;


# direct methods
.method public constructor <init>(Ld7/a$i$c$a$c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$4"
        }
    .end annotation

    iput-object p1, p0, Ld7/a$i$c$a$c$a$a;->a:Ld7/a$i$c$a$c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backup"
        }
    .end annotation

    const-string p1, "Backup created successfully"

    invoke-static {p1}, LN7/c;->v0(Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    const-string v0, "Backup failed"

    invoke-static {v0, p1}, LZ6/i;->y1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
