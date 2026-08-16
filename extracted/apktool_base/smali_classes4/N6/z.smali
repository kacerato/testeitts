.class public final synthetic LN6/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN6/z;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, LN6/z;->b:Ljava/lang/String;

    check-cast p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBranchConnection;

    invoke-static {v0, p1}, LN6/H;->i(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBranchConnection;)Z

    move-result p1

    return p1
.end method
