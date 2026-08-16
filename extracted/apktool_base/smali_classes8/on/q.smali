.class public Lon/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:Ljava/lang/String; = "meta.json"

.field public static final h:Ljava/lang/String; = "graph_references.binary"

.field public static final i:Ljava/lang/String; = "node_link2.binary"

.field public static final j:Ljava/lang/String; = "graph%d.json"

.field public static final k:Ljava/lang/String; = "graph%d_extra.binary"

.field public static final l:Ljava/lang/String; = "graph%d_references.binary"

.field public static final m:I = 0x3


# instance fields
.field public final a:Lon/k;

.field public final b:Lon/l;

.field public final c:Lon/h;

.field public final d:Lon/f;

.field public final e:Lon/c;

.field public final f:Lon/n;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lon/k;

    invoke-direct {v0}, Lon/k;-><init>()V

    iput-object v0, p0, Lon/q;->a:Lon/k;

    new-instance v0, Lon/l;

    invoke-direct {v0}, Lon/l;-><init>()V

    iput-object v0, p0, Lon/q;->b:Lon/l;

    new-instance v0, Lon/h;

    invoke-direct {v0}, Lon/h;-><init>()V

    iput-object v0, p0, Lon/q;->c:Lon/h;

    new-instance v0, Lon/f;

    invoke-direct {v0}, Lon/f;-><init>()V

    iput-object v0, p0, Lon/q;->d:Lon/f;

    new-instance v0, Lon/c;

    invoke-direct {v0}, Lon/c;-><init>()V

    iput-object v0, p0, Lon/q;->e:Lon/c;

    new-instance v0, Lon/n;

    invoke-direct {v0}, Lon/n;-><init>()V

    iput-object v0, p0, Lon/q;->f:Lon/n;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)Lon/d;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zipFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    iget-object p1, p0, Lon/q;->a:Lon/k;

    const-string v1, "meta.json"

    invoke-virtual {p1, v0, v1}, Lon/k;->a(Ljava/util/zip/ZipFile;Ljava/lang/String;)Lon/j;

    move-result-object v3

    iget-object p1, p0, Lon/q;->b:Lon/l;

    const-string v1, "graph_references.binary"

    invoke-virtual {p1, v0, v1}, Lon/l;->b(Ljava/util/zip/ZipFile;Ljava/lang/String;)[I

    move-result-object v4

    iget-object p1, p0, Lon/q;->f:Lon/n;

    const-string v1, "node_link2.binary"

    invoke-virtual {p1, v0, v1, v4}, Lon/n;->b(Ljava/util/zip/ZipFile;Ljava/lang/String;[I)[Lon/m;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 p1, 0x0

    :goto_0
    iget v1, v3, Lon/j;->b:I

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lon/q;->c:Lon/h;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v9, "graph%d.json"

    invoke-static {v9, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lon/h;->a(Ljava/util/zip/ZipFile;Ljava/lang/String;)Lon/g;

    move-result-object v1

    iget-object v2, p0, Lon/q;->d:Lon/f;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    const-string v10, "graph%d_extra.binary"

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    invoke-virtual {v2, v0, v9, v1, v10}, Lon/f;->c(Ljava/util/zip/ZipFile;Ljava/lang/String;Lon/g;I)Lon/e;

    move-result-object v2

    iget-object v9, p0, Lon/q;->e:Lon/c;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    const-string v11, "graph%d_references.binary"

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v0, v10, v3, v4}, Lon/c;->b(Ljava/util/zip/ZipFile;Ljava/lang/String;Lon/j;[I)Ljava/util/List;

    move-result-object v9

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    new-instance p1, Lon/d;

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lon/d;-><init>(Lon/j;[I[Lon/m;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object p1
.end method
