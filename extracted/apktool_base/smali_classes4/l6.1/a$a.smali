.class public Ll6/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Utils/y$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll6/a;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ll6/a;


# direct methods
.method public constructor <init>(Ll6/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Ll6/a$a;->a:Ll6/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Lj6/b;

    invoke-direct {v0, p1}, Lj6/b;-><init>(Ljava/io/File;)V

    iget-object p1, p0, Ll6/a$a;->a:Ll6/a;

    invoke-virtual {p1, v0}, Lj6/d;->h(Lj6/b;)V

    :cond_0
    return-void
.end method

.method public onFinish()V
    .locals 0

    return-void
.end method
