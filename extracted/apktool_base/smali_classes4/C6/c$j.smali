.class public LC6/c$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/blacksquircle/ui/editorkit/utils/RequestLineTips;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LC6/c;->b0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LC6/c;


# direct methods
.method public constructor <init>(LC6/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LC6/c$j;->a:LC6/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTypeForLine(IZ)Lorg/blacksquircle/ui/editorkit/utils/RequestLineTips$Type;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "line",
            "isLatest"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, LC6/c$j;->a:LC6/c;

    invoke-virtual {v0}, LC6/c;->S()Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, LC6/c$j;->a:LC6/c;

    invoke-virtual {v0}, LC6/c;->S()Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld8/e;

    const/4 v3, 0x1

    if-eqz p2, :cond_2

    iget v4, v2, Ld8/e;->c:I

    add-int/lit8 v5, p1, -0x1

    if-lt v4, v5, :cond_0

    invoke-virtual {v2}, Ld8/e;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p1, Lorg/blacksquircle/ui/editorkit/utils/RequestLineTips$Type;->Error:Lorg/blacksquircle/ui/editorkit/utils/RequestLineTips$Type;

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    if-gt p1, v3, :cond_3

    invoke-virtual {v2}, Ld8/e;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p1, Lorg/blacksquircle/ui/editorkit/utils/RequestLineTips$Type;->Error:Lorg/blacksquircle/ui/editorkit/utils/RequestLineTips$Type;

    return-object p1

    :cond_3
    iget v4, v2, Ld8/e;->c:I

    add-int/lit8 v5, p1, -0x1

    if-ne v4, v5, :cond_0

    invoke-virtual {v2}, Ld8/e;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p1, Lorg/blacksquircle/ui/editorkit/utils/RequestLineTips$Type;->Error:Lorg/blacksquircle/ui/editorkit/utils/RequestLineTips$Type;

    return-object p1

    :cond_4
    if-eqz v1, :cond_5

    sget-object p1, Lorg/blacksquircle/ui/editorkit/utils/RequestLineTips$Type;->Alert:Lorg/blacksquircle/ui/editorkit/utils/RequestLineTips$Type;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    sget-object p1, Lorg/blacksquircle/ui/editorkit/utils/RequestLineTips$Type;->None:Lorg/blacksquircle/ui/editorkit/utils/RequestLineTips$Type;

    return-object p1
.end method

.method public showLineTips(IIIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "line",
            "x",
            "y",
            "isLatest"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, LC6/c$j;->a:LC6/c;

    invoke-static {v0, p1, p2, p3, p4}, LC6/c;->v(LC6/c;IIIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
