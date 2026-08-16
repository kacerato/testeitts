.class public Lu8/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz8/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu8/a;->w(ILu8/d;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lu8/d;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:[I

.field public final synthetic e:Lu8/a;


# direct methods
.method public constructor <init>(Lu8/a;ILu8/d;Landroid/content/Context;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$x",
            "val$serviceListener",
            "val$context",
            "val$count"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lu8/a$c;->e:Lu8/a;

    iput p2, p0, Lu8/a$c;->a:I

    iput-object p3, p0, Lu8/a$c;->b:Lu8/d;

    iput-object p4, p0, Lu8/a$c;->c:Landroid/content/Context;

    iput-object p5, p0, Lu8/a$c;->d:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lu8/a$c;->b:Lu8/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lu8/d;->a()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Lu8/a$c;->e:Lu8/a;

    iget-object v0, v0, Lu8/a;->a:Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleted unnecessary file: /Builder/assets/compiled/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lu8/a$c;->e:Lu8/a;

    invoke-static {v2}, Lu8/a;->a(Lu8/a;)[Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lu8/a$c;->a:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;->h(Ljava/lang/String;)V

    iget v0, p0, Lu8/a$c;->a:I

    iget-object v1, p0, Lu8/a$c;->e:Lu8/a;

    invoke-static {v1}, Lu8/a;->a(Lu8/a;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lu8/a$c;->e:Lu8/a;

    iget v1, p0, Lu8/a$c;->a:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lu8/a$c;->b:Lu8/d;

    iget-object v3, p0, Lu8/a$c;->c:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lu8/a;->b(Lu8/a;ILu8/d;Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lu8/a$c;->b:Lu8/d;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lu8/d;->onSuccess()V

    :cond_1
    :goto_0
    return-void
.end method

.method public c()V
    .locals 4

    iget-object v0, p0, Lu8/a$c;->b:Lu8/d;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lu8/a$c;->d:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    iget v1, p0, Lu8/a$c;->a:I

    invoke-interface {v0, v3, v1}, Lu8/d;->onProgressChange(II)V

    :cond_0
    return-void
.end method
