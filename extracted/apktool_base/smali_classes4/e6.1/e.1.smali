.class public final synthetic Le6/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lga/a$d;


# instance fields
.field public final synthetic a:Le6/l;

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;


# direct methods
.method public synthetic constructor <init>(Le6/l;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le6/e;->a:Le6/l;

    iput-object p2, p0, Le6/e;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;

    return-void
.end method


# virtual methods
.method public final a(Lga/H;Lga/H;)V
    .locals 2

    iget-object v0, p0, Le6/e;->a:Le6/l;

    iget-object v1, p0, Le6/e;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;

    invoke-static {v0, v1, p1, p2}, Le6/l;->r1(Le6/l;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;Lga/H;Lga/H;)V

    return-void
.end method
