.class public final synthetic Le6/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# instance fields
.field public final synthetic a:Le6/E;

.field public final synthetic b:I

.field public final synthetic c:Lga/G;

.field public final synthetic d:I

.field public final synthetic e:Lga/H;


# direct methods
.method public synthetic constructor <init>(Le6/E;ILga/G;ILga/H;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le6/s;->a:Le6/E;

    iput p2, p0, Le6/s;->b:I

    iput-object p3, p0, Le6/s;->c:Lga/G;

    iput p4, p0, Le6/s;->d:I

    iput-object p5, p0, Le6/s;->e:Lga/H;

    return-void
.end method


# virtual methods
.method public final onSelected(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Le6/s;->a:Le6/E;

    iget v1, p0, Le6/s;->b:I

    iget-object v2, p0, Le6/s;->c:Lga/G;

    iget v3, p0, Le6/s;->d:I

    iget-object v4, p0, Le6/s;->e:Lga/H;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Le6/E;->m(Le6/E;ILga/G;ILga/H;Landroid/view/View;)V

    return-void
.end method
