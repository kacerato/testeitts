.class public Lcom/google/protobuf/TextFormat$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/TextFormat$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/protobuf/TextFormat$c$a;",
        ">;"
    }
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Lcom/google/protobuf/Q0;

.field public final d:Lcom/google/protobuf/Descriptors$f$b;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/google/protobuf/Descriptors$f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entry",
            "fieldDescriptor"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lcom/google/protobuf/Q0;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/protobuf/Q0;

    iput-object p1, p0, Lcom/google/protobuf/TextFormat$c$a;->c:Lcom/google/protobuf/Q0;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/protobuf/TextFormat$c$a;->b:Ljava/lang/Object;

    :goto_0
    invoke-static {p2}, Lcom/google/protobuf/TextFormat$c$a;->b(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/Descriptors$f$b;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/TextFormat$c$a;->d:Lcom/google/protobuf/Descriptors$f$b;

    return-void
.end method

.method public static b(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/Descriptors$f$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fieldDescriptor"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->x()Lcom/google/protobuf/Descriptors$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$b;->s()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Descriptors$f;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->v()Lcom/google/protobuf/Descriptors$f$b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lcom/google/protobuf/TextFormat$c$a;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$c$a;->d()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$c$a;->d()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-object v0, Lcom/google/protobuf/TextFormat$a;->a:[I

    iget-object v2, p0, Lcom/google/protobuf/TextFormat$c$a;->d:Lcom/google/protobuf/Descriptors$f$b;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_7

    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    const/4 v3, 0x3

    if-eq v0, v3, :cond_5

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eq v0, v3, :cond_1

    return v4

    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$c$a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$c$a;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez v0, :cond_2

    if-nez p1, :cond_2

    return v4

    :cond_2
    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    return v1

    :cond_3
    if-eqz v0, :cond_4

    if-nez p1, :cond_4

    return v2

    :cond_4
    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$c$a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$c$a;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    invoke-virtual {v0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    return p1

    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$c$a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$c$a;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    invoke-virtual {v0, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p1

    return p1

    :cond_7
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$c$a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$c$a;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result p1

    return p1

    :cond_8
    :goto_0
    invoke-static {}, Lcom/google/protobuf/TextFormat;->b()Ljava/util/logging/Logger;

    move-result-object p1

    const-string v0, "Invalid key for map field."

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return v1
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/TextFormat$c$a;->c:Lcom/google/protobuf/Q0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/TextFormat$c$a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "b"
        }
    .end annotation

    check-cast p1, Lcom/google/protobuf/TextFormat$c$a;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/TextFormat$c$a;->a(Lcom/google/protobuf/TextFormat$c$a;)I

    move-result p1

    return p1
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/TextFormat$c$a;->c:Lcom/google/protobuf/Q0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/Q0;->s6()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
