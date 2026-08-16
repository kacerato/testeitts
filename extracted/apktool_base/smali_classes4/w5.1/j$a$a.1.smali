.class public Lw5/j$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ6/g$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw5/j$a;->onSelected(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/io/File;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lw5/j$a;


# direct methods
.method public constructor <init>(Lw5/j$a;Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$metaFF",
            "val$metaFolder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lw5/j$a$a;->c:Lw5/j$a;

    iput-object p2, p0, Lw5/j$a$a;->a:Ljava/io/File;

    iput-object p3, p0, Lw5/j$a$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LZ6/g;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "progress",
            "area"
        }
    .end annotation

    new-instance p2, Lw5/j$a$a$a;

    invoke-direct {p2, p0, p1}, Lw5/j$a$a$a;-><init>(Lw5/j$a$a;LZ6/g;)V

    invoke-static {p2}, LO9/b;->d(Ljava/lang/Runnable;)V

    return-void
.end method
