using NUnit.Framework;

namespace Kaitai
{
    [TestFixture]
    public class SpecInstanceIoUser : CommonSpec
    {
        [Test]
        public void TestInstanceIoUser()
        {
            InstanceIoUser r = InstanceIoUser.FromFile(SourceFile("instance_io.bin"));

            Assert.AreEqual(r.QtyEntries, 3);

            Assert.AreEqual(r.Entries[0].Name, "the");
            Assert.AreEqual(r.Entries[1].Name, "rainy");
            Assert.AreEqual(r.Entries[2].Name, "day it is");
        }
    }
}