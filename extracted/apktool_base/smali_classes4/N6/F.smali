.class public final synthetic LN6/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN6/F;->b:Ljava/lang/String;

    iput p2, p0, LN6/F;->c:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, LN6/F;->b:Ljava/lang/String;

    iget v1, p0, LN6/F;->c:I

    check-cast p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;

    invoke-static {v0, v1, p1}, LN6/H;->h(Ljava/lang/String;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;)Z

    move-result p1

    return p1
.end method
