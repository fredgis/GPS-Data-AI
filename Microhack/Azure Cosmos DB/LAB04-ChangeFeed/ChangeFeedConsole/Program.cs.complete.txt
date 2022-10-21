using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;
using Microsoft.Azure.Cosmos;
using Shared;

namespace ChangeFeedConsole
{
    class Program
    {
        private static readonly string _endpointUrl = "https://cosmos-openhack.documents.azure.com:443/";
        private static readonly string _primaryKey = "ZVCHpcM1cXCx2uk0bfdv5rQ6hTQOQQduIozCM0GO8m1Qjn3MSLd07m1kTltTvfmAih0Lu3oyRLydzomF605Q3g==";
        private static readonly string _databaseId = "database_team01";
        private static readonly string _containerId = "CartContainer";

        private static readonly string _destinationContainerId = "CartContainerByState";

        static async Task Main(string[] args)
        {
            using (var client = new CosmosClient(_endpointUrl, _primaryKey))
            {
                var db = client.GetDatabase(_databaseId);
                var container = db.GetContainer(_containerId);

                // todo: Add lab code here

                Console.WriteLine("Started Change Feed Processor");
                Console.WriteLine("Press any key to stop the processor...");

                Console.ReadKey();

                Console.WriteLine("Stopping Change Feed Processor");

                // todo: Add stop code here
            }
        }
    }
}