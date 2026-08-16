.class public Lz4/a$b;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz4/a;->m(Lz4/a$f;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LA4/b;

.field public final synthetic c:LA4/c;

.field public final synthetic d:Lz4/a;


# direct methods
.method public constructor <init>(Lz4/a;LA4/b;LA4/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$backup",
            "val$element"
        }
    .end annotation

    iput-object p1, p0, Lz4/a$b;->d:Lz4/a;

    iput-object p2, p0, Lz4/a$b;->b:LA4/b;

    iput-object p3, p0, Lz4/a$b;->c:LA4/c;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object v0, p0, Lz4/a$b;->d:Lz4/a;

    iget-object v1, p0, Lz4/a$b;->b:LA4/b;

    iget-object v2, p0, Lz4/a$b;->c:LA4/c;

    invoke-static {v0, p1, v1, v2}, Lz4/a;->g(Lz4/a;Landroid/view/View;LA4/b;LA4/c;)V

    return-void
.end method
