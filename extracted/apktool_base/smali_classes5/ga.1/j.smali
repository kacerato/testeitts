.class public final synthetic Lga/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Ljava/lang/Long;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lga/j;->b:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lga/j;->b:Ljava/lang/Long;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->a(Ljava/lang/Long;Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method
