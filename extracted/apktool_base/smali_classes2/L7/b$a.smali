.class public LL7/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LL7/b;->c(Landroid/view/View;LL7/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LL7/a;

.field public final synthetic c:LL7/b;


# direct methods
.method public constructor <init>(LL7/b;LL7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$user"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LL7/b$a;->c:LL7/b;

    iput-object p2, p0, LL7/b$a;->b:LL7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object v0, p0, LL7/b$a;->b:LL7/a;

    invoke-virtual {v0}, LL7/a;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LL7/b$a;->b:LL7/a;

    invoke-virtual {v1}, LL7/a;->b()J

    move-result-wide v1

    sget-object v3, Lr4/a$e;->Below:Lr4/a$e;

    invoke-static {v0, v1, v2, p1, v3}, La6/a;->p1(Ljava/lang/String;JLandroid/view/View;Lr4/a$e;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-void
.end method
