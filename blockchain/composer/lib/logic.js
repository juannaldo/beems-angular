'use strict';

/**
 * Track the update of an asset from one place to another
 * @param {org.bit.beems.UpdateBEEMSAsset} updateBEEMSAsset - the BEEMSasset to be processed
 * @transaction
 */
async function doUpdateBEEMSAsset(updateBEEMSAsset) {
    updateBEEMSAsset.beemsAsset.assetName = updateBEEMSAsset.assetName;
    updateBEEMSAsset.beemsAsset.assetContentHash = updateBEEMSAsset.assetContentHash;
    updateBEEMSAsset.beemsAsset.currentGPSLocation = updateBEEMSAsset.currentGPSLocation;

    let assetRegistry = await getAssetRegistry('org.bit.beems.BEEMSAsset');
    await assetRegistry.update(updateBEEMSAsset.beemsAsset);
}
