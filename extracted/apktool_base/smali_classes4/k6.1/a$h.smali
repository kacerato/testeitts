.class public Lk6/a$h;
.super LH7/d$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk6/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "h"
.end annotation


# instance fields
.field public final synthetic b:Lk6/a;


# direct methods
.method public constructor <init>(Lk6/a;Landroid/view/View;)V
    .locals 0
    .param p1    # Lk6/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "itemView"
        }
    .end annotation

    iput-object p1, p0, Lk6/a$h;->b:Lk6/a;

    invoke-direct {p0, p1, p2}, LH7/d$a;-><init>(LH7/d;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(LH7/a;LH7/d$c;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "element",
            "ll"
        }
    .end annotation

    return-void
.end method
