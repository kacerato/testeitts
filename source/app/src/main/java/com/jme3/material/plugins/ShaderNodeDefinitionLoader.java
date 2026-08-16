package com.jme3.material.plugins;

import com.jme3.asset.AssetInfo;
import com.jme3.asset.AssetKey;
import com.jme3.asset.AssetLoadException;
import com.jme3.asset.AssetLoader;
import com.jme3.asset.ShaderNodeDefinitionKey;
import com.jme3.util.blockparser.BlockLanguageParser;
import com.jme3.util.blockparser.Statement;
import java.io.IOException;
import java.util.List;

public class ShaderNodeDefinitionLoader implements AssetLoader {
    @Override
    public Object load(AssetInfo assetInfo) throws IOException {
        AssetKey key = assetInfo.getKey();
        if (!(key instanceof ShaderNodeDefinitionKey)) {
            throw new IOException("ShaderNodeDefinition file must be loaded via ShaderNodeDefinitionKey");
        }
        ShaderNodeDefinitionKey shaderNodeDefinitionKey = (ShaderNodeDefinitionKey) key;
        ShaderNodeLoaderDelegate shaderNodeLoaderDelegate = new ShaderNodeLoaderDelegate();
        List<Statement> parse = BlockLanguageParser.parse(assetInfo.openStream());
        if (parse.size() != 2) {
            if (parse.size() == 1) {
                return shaderNodeLoaderDelegate.readNodesDefinitions(parse.get(0).getContents(), shaderNodeDefinitionKey);
            }
            throw new MatParseException("Too many roots in J3SN file", parse.get(0));
        }
        Statement statement = parse.get(0);
        String line = statement.getLine();
        if (line.startsWith("Exception")) {
            throw new AssetLoadException(line.substring(10));
        }
        throw new MatParseException("In multi-root shader node definition, expected first statement to be 'Exception'", statement);
    }
}
