.class public final Lvd/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvd/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lvd/b;


# direct methods
.method public constructor <init>(Lvd/b;)V
    .locals 0

    iput-object p1, p0, Lvd/b$d;->b:Lvd/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lvd/b$d;->b:Lvd/b;

    invoke-virtual {v1}, Lvd/b;->getIndeterminateMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lvd/b$d;->b:Lvd/b;

    invoke-static {v1}, Lvd/b;->e(Lvd/b;)V

    iget-object v1, v0, Lvd/b$d;->b:Lvd/b;

    invoke-static {v1}, Lvd/b;->a(Lvd/b;)Lvd/b$c;

    move-result-object v2

    invoke-static {v1, v2}, Lvd/b;->f(Lvd/b;Lvd/b$c;)Lvd/b$c;

    move-result-object v2

    invoke-static {v1, v2}, Lvd/b;->g(Lvd/b;Lvd/b$c;)V

    iget-object v1, v0, Lvd/b$d;->b:Lvd/b;

    invoke-static {v1}, Lvd/b;->a(Lvd/b;)Lvd/b$c;

    move-result-object v2

    invoke-static {v1, v2}, Lvd/b;->d(Lvd/b;Lvd/b$c;)Z

    move-result v1

    const-wide/16 v2, 0x5dc

    if-eqz v1, :cond_0

    iget-object v4, v0, Lvd/b$d;->b:Lvd/b;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/16 v9, 0xc

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lvd/b;->v(Lvd/b;FLjava/lang/Long;Landroid/animation/TimeInterpolator;Ljava/lang/Long;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v11, v0, Lvd/b$d;->b:Lvd/b;

    invoke-virtual {v11}, Lvd/b;->getProgressMax()F

    move-result v12

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const/16 v16, 0xc

    const/16 v17, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v11 .. v17}, Lvd/b;->v(Lvd/b;FLjava/lang/Long;Landroid/animation/TimeInterpolator;Ljava/lang/Long;ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
