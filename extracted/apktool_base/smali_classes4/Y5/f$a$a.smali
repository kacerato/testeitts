.class public LY5/f$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LK7/a$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LY5/f$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LY5/f$a;


# direct methods
.method public constructor <init>(LY5/f$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LY5/f$a$a;->a:LY5/f$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LY5/f$a$a;->a:LY5/f$a;

    iget-object v0, v0, LY5/f$a;->a:LY5/f;

    invoke-static {v0}, LY5/f;->y1(LY5/f;)V

    return-void
.end method
