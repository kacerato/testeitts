.class public final synthetic LE4/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:LE4/d$e;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(LE4/d$e;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE4/f;->b:LE4/d$e;

    iput-object p2, p0, LE4/f;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, LE4/f;->b:LE4/d$e;

    iget-object v1, p0, LE4/f;->c:Ljava/lang/String;

    invoke-static {v0, v1, p1}, LE4/d$e;->c(LE4/d$e;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
