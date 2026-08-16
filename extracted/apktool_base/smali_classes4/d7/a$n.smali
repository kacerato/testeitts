.class public Ld7/a$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld7/a;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ldd/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$SearchTittle",
            "val$searchText"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ld7/a$n;->a:Ljava/lang/String;

    iput-object p2, p0, Ld7/a$n;->b:Ljava/lang/String;

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

    iget-object p1, p0, Ld7/a$n;->a:Ljava/lang/String;

    iget-object v0, p0, Ld7/a$n;->b:Ljava/lang/String;

    new-instance v1, Ld7/a$n$a;

    invoke-direct {v1, p0}, Ld7/a$n$a;-><init>(Ld7/a$n;)V

    invoke-static {p1, v0, v1}, LY5/d;->Z1(Ljava/lang/String;Ljava/lang/String;LY5/e;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-void
.end method
