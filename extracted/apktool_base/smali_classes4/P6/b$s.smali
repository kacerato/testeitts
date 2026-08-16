.class public LP6/b$s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LN9/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LP6/b;->f(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;LP6/b$z;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LP6/b$z;


# direct methods
.method public constructor <init>(LP6/b$z;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LP6/b$s;->a:LP6/b$z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LP6/b$s;->a:LP6/b$z;

    invoke-interface {v0}, LP6/b$z;->b()V

    return-void
.end method
