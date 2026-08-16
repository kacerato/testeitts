.class public final synthetic LZ5/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:LZ5/f$p;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(LZ5/f$p;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZ5/h;->b:LZ5/f$p;

    iput-object p2, p0, LZ5/h;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, LZ5/h;->b:LZ5/f$p;

    iget-object v1, p0, LZ5/h;->c:Ljava/lang/String;

    check-cast p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;

    invoke-static {v0, v1, p1}, LZ5/f$p;->n(LZ5/f$p;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;)Z

    move-result p1

    return p1
.end method
