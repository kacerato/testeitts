.class public final synthetic Le6/Q;
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

    iput-object p1, p0, Le6/Q;->b:Ljava/lang/String;

    iput p2, p0, Le6/Q;->c:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Le6/Q;->b:Ljava/lang/String;

    iget v1, p0, Le6/Q;->c:I

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;

    invoke-static {v0, v1, p1}, Le6/X;->b(Ljava/lang/String;ILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;)Z

    move-result p1

    return p1
.end method
