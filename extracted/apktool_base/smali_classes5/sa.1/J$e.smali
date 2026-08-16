.class public Lsa/J$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsa/J$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsa/J;->v(Lcom/itsmagic/engine/Engines/Engine/Material/Material;[Ljava/lang/String;[Ljava/lang/String;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lsa/J$l<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/Material/Material;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$material"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lsa/J$e;->a:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "alias",
            "v"
        }
    .end annotation

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lsa/J$e;->b(Ljava/lang/String;Ljava/lang/Float;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Float;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "alias",
            "v"
        }
    .end annotation

    iget-object v0, p0, Lsa/J$e;->a:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->setFloat(Ljava/lang/String;F)V

    return-void
.end method
