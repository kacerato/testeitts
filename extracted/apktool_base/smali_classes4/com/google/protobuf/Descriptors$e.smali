.class public final Lcom/google/protobuf/Descriptors$e;
.super Lcom/google/protobuf/Descriptors$h;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/D0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# static fields
.field public static final f:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/protobuf/Descriptors$e;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Lcom/google/protobuf/Descriptors$j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Descriptors$j<",
            "Lcom/google/protobuf/Descriptors$e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:I

.field public c:Lcom/google/protobuf/H$h;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/google/protobuf/Descriptors$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/protobuf/Descriptors$e$a;

    invoke-direct {v0}, Lcom/google/protobuf/Descriptors$e$a;-><init>()V

    sput-object v0, Lcom/google/protobuf/Descriptors$e;->f:Ljava/util/Comparator;

    new-instance v0, Lcom/google/protobuf/Descriptors$e$b;

    invoke-direct {v0}, Lcom/google/protobuf/Descriptors$e$b;-><init>()V

    sput-object v0, Lcom/google/protobuf/Descriptors$e;->g:Lcom/google/protobuf/Descriptors$j;

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/Descriptors$d;Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "parent",
            "number"
        }
    .end annotation

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, v0}, Lcom/google/protobuf/Descriptors$h;-><init>(Lcom/google/protobuf/Descriptors$a;)V

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_ENUM_VALUE_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {}, Lcom/google/protobuf/H$h;->A6()Lcom/google/protobuf/H$h$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/protobuf/H$h$b;->C6(Ljava/lang/String;)Lcom/google/protobuf/H$h$b;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/google/protobuf/H$h$b;->E6(I)Lcom/google/protobuf/H$h$b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/protobuf/H$h$b;->m1()Lcom/google/protobuf/H$h;

    move-result-object p2

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/google/protobuf/Descriptors$e;->b:I

    .line 13
    iput-object p2, p0, Lcom/google/protobuf/Descriptors$e;->c:Lcom/google/protobuf/H$h;

    .line 14
    iput-object p1, p0, Lcom/google/protobuf/Descriptors$e;->e:Lcom/google/protobuf/Descriptors$d;

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$d;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/google/protobuf/H$h;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/Descriptors$e;->d:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/Descriptors$d;Ljava/lang/Integer;Lcom/google/protobuf/Descriptors$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/Descriptors$e;-><init>(Lcom/google/protobuf/Descriptors$d;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/H$h;Lcom/google/protobuf/Descriptors$g;Lcom/google/protobuf/Descriptors$d;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "proto",
            "file",
            "parent",
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/google/protobuf/Descriptors$h;-><init>(Lcom/google/protobuf/Descriptors$a;)V

    .line 4
    iput p4, p0, Lcom/google/protobuf/Descriptors$e;->b:I

    .line 5
    iput-object p1, p0, Lcom/google/protobuf/Descriptors$e;->c:Lcom/google/protobuf/H$h;

    .line 6
    iput-object p3, p0, Lcom/google/protobuf/Descriptors$e;->e:Lcom/google/protobuf/Descriptors$d;

    .line 7
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$d;->b()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x2e

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/protobuf/H$h;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/Descriptors$e;->d:Ljava/lang/String;

    .line 8
    invoke-static {p2}, Lcom/google/protobuf/Descriptors$g;->e(Lcom/google/protobuf/Descriptors$g;)Lcom/google/protobuf/Descriptors$c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/protobuf/Descriptors$c;->b(Lcom/google/protobuf/Descriptors$h;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/H$h;Lcom/google/protobuf/Descriptors$g;Lcom/google/protobuf/Descriptors$d;ILcom/google/protobuf/Descriptors$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/protobuf/Descriptors$e;-><init>(Lcom/google/protobuf/H$h;Lcom/google/protobuf/Descriptors$g;Lcom/google/protobuf/Descriptors$d;I)V

    return-void
.end method

.method public static synthetic e(Lcom/google/protobuf/Descriptors$e;Lcom/google/protobuf/H$h;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Descriptors$e;->j(Lcom/google/protobuf/H$h;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/protobuf/Descriptors$g;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$e;->e:Lcom/google/protobuf/Descriptors$d;

    invoke-static {v0}, Lcom/google/protobuf/Descriptors$d;->g(Lcom/google/protobuf/Descriptors$d;)Lcom/google/protobuf/Descriptors$g;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$e;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$e;->c:Lcom/google/protobuf/H$h;

    invoke-virtual {v0}, Lcom/google/protobuf/H$h;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Lcom/google/protobuf/Y0;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$e;->k()Lcom/google/protobuf/H$h;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/Descriptors$e;->b:I

    return v0
.end method

.method public getNumber()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$e;->c:Lcom/google/protobuf/H$h;

    invoke-virtual {v0}, Lcom/google/protobuf/H$h;->getNumber()I

    move-result v0

    return v0
.end method

.method public h()Lcom/google/protobuf/H$j;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$e;->c:Lcom/google/protobuf/H$h;

    invoke-virtual {v0}, Lcom/google/protobuf/H$h;->getOptions()Lcom/google/protobuf/H$j;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/google/protobuf/Descriptors$d;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$e;->e:Lcom/google/protobuf/Descriptors$d;

    return-object v0
.end method

.method public final j(Lcom/google/protobuf/H$h;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "proto"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/protobuf/Descriptors$e;->c:Lcom/google/protobuf/H$h;

    return-void
.end method

.method public k()Lcom/google/protobuf/H$h;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$e;->c:Lcom/google/protobuf/H$h;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$e;->c:Lcom/google/protobuf/H$h;

    invoke-virtual {v0}, Lcom/google/protobuf/H$h;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
