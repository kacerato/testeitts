.class public Lcom/itsmagic/engine/Core/Components/ProjectController/a$e$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnd/e$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Core/Components/ProjectController/a$e$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/itsmagic/engine/Core/Components/ProjectController/a$e$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Core/Components/ProjectController/a$e$a;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$projectFolder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$e$a$a;->b:Lcom/itsmagic/engine/Core/Components/ProjectController/a$e$a;

    iput-object p2, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$e$a$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$e$a$a;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->m0(Ljava/lang/String;Ljava/io/File;)Z

    move-result p1

    return p1
.end method
